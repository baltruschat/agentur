<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('events', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('groupid');
			$table->integer('userid');
			$table->string('name',255);
			$table->string('place',255);
			$table->dateTime('starttime');
			$table->dateTime('endtime');
			$table->boolean('allday');
			$table->integer('repeat');
			$table->text('note');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('events');
	}

}
