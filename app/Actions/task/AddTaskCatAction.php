<?php

namespace App\Actions\task;

use App\Models\TaskCat;

class AddTaskCatAction
{
    private $taskCat;

    public function execute(TaskCat $taskCat)
    {
        $this->taskCat = $taskCat;
    }
}
