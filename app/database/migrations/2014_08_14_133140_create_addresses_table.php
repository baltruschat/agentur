<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAddressesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('addresses', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('group');
			$table->string('firstname',100);
			$table->string('company',150);
			$table->string('name',100);
			$table->string('street');
			$table->string('zip',20);
			$table->string('city',100);
			$table->string('country',100);
			$table->string('www',150);
			$table->string('email',150);
			$table->string('category',150);
			$table->string('position',150);
			$table->string('tel',100);
			$table->string('tel2',100);
			$table->string('mobile',100);
			$table->string('fax',100);
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('addresses');
	}

}
