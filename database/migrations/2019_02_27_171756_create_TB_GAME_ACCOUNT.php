<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTBUSER extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('TB_GAME_ACCOUNT', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('USERNAME', 30);
            $table->string('PASSWORD_KEY', 30);
            $table->integer('ORIGINAL_PRICE');
            $table->integer('ACCEPT_PRICE');
            $table->integer('CURRENT_STATUS');
            $table->timestamps();
            $table->primary(['USERNAME']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('TB_GAME_ACCOUNT');
    }
}
