<?php

namespace App\Action;

use {{ namespacedModel }};

class Tasksa
{
    private ${{ modelVariable }};

    public function execute({{ m }} ${{ modelVariable }})
    {
        $this->{{ modelVariable }} = ${{ modelVariable }};
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
