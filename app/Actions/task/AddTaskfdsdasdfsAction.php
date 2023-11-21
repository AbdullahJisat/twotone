<?php

namespace App\Actions\task;

use App\Models\Taskdsddasdas;

class AddTaskfdsdasdfsAction
{
    private $taskdsddasdas;

    public function execute({{ m }} $taskdsddasdas)
    {
        $this->taskdsddasdas = $taskdsddasdas;
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
