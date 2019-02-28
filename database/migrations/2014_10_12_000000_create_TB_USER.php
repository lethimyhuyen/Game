<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('TB_USER', function (Blueprint $table) {
            $table->increments('id');
            $table->string('USERNAME', 30);
            $table->string('PASSWORD_KEY', 30);
            $table->string('NAME', 30);
            $table->string('EMAIL', 30);
            $table->integer('PHONE');
            $table->string('CURRENT_ADDRESS', 50);
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('TB_USER');
    }
}
