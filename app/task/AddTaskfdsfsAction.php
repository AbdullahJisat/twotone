<?php

namespace App\task;

use App\Models\Taskdsd;

class AddTaskfdsfsAction
{
    private $taskdsd;

    public function execute({{ m }} $taskdsd)
    {
        $this->taskdsd = $taskdsd;
    }
}


namespace App\Actions\task;

use App\Models\Task;

class AddTaskAction
{
    private $task;

    public function execute(Task $task)
    {
        $this->task = $task;
    }
}
