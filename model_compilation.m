function model = model_compilation( para_values,EmpiricalData2)

%   Calculate size of Given Matrix
Size = size(EmpiricalData2);

%   Initialize number of agents
NumberAgents = Size(1,2);

%   Set endtime
EndTime = Size(1,1);

%   Initialize AggImpact array
AggImpact = double(NumberAgents);

%   Initialize First Step
Steps = 1;

% Make weightVector
WeightVector = zeros(12,12);

% Fill the weightvector with para-values
WeightVector = UpdateVector(para_values,WeightVector);

%   Set the scalevector for every agent
ScaleVector = sum(WeightVector,2);

 %   Get first state from given reference dataset.
    State(1,:) = EmpiricalData2(1,:);
    
    %   While Steps are Smaller then Endtime
    while Steps < EndTime 
        Steps = Steps + 1;
    %   calculate AGGIMPACT
        for agent = 1:NumberAgents
            ssum = 0;
            AggImpact(agent) = 0;
            %   calculate SUM
             for agents = 1:NumberAgents
                ssum = ssum + ((WeightVector(agent,agents)*State((Steps-1),agents)));  
             end
            %   Add find sum to given agent by aggimpact(t) + (SSUM/ScaledVector)
            AggImpact(agent) = AggImpact(agent) +((ssum)/ScaleVector(agent)); 
        end 
            for agents = 1:NumberAgents
                %   Determine the opinions
                %   State (t+1) = State(t) + ((UpdateParameter * AggImpact)- State(t)
                State(Steps,agents) = State((Steps-1),agents) + (0.5*((AggImpact(agents) - State((Steps-1),agents))));    
            end
    end
    model = State;
end