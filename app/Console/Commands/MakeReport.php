<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Console\GeneratorCommand;

class MakeReport extends GeneratorCommand
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'make:report {name}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Create a new Repo';


    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = '';

    //...

    public function getStub()
    {
        return app_path() . '/Console/Commands/Stubs/make-report.stub';
    }

    public function getDefaultNamespace($rootNamespace)
    {
        return $rootNamespace . '\Reports';
    }

    public function replaceClass($stub, $name)
    {
        $stub = parent::replaceClass($stub, $name);

        return str_replace("DummyReport", $this->argument('name'), $stub);
    }
}
}
