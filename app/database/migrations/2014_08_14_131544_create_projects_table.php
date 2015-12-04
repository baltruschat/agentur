<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('projects', function(Blueprint $table)
		{
			$table->increments('id');
			$table->enum('status', array(1,2,3));
			$table->string('name');
			$table->text('description');
			$table->dateTime('date');
			$table->integer('creator');
			$table->integer('group');
			$table->integer('address');
			$table->integer('invoice_address');
			$table->integer('manager');
			$table->string('invoice_number',50);
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('projects');
	}

}
