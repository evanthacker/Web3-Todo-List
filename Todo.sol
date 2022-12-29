//SPDX-License-Identifier:MIT
pragma solidity 0.8.13;

    contract ToDo{
        uint public totalTasks = 0;
        mapping(uint => Task) public taskList;

        struct Task{
            uint id;
            string taskName;
            bool completedYet;
            uint completeTime;
        }

        function createTask(string memory taskText)public{

            taskList[totalTasks] = Task(totalTasks, taskText, false, 0);
             totalTasks += 1;

        }

        function toggleTask(uint index) public{
            if(!taskList[index].completedYet){
                taskList[index].completeTime = block.timestamp;
            }else{
                taskList[index].completeTime = 0;
            }
            taskList[index].completedYet = !taskList[index].completedYet;
        }

    }
