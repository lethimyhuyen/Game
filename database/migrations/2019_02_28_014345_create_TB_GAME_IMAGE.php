<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTBGAMEIMAGE extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('TB_GAME_IMAGE', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('USERNAME', 30);
            $table->string('ACCOUNT_IMAGE',100);
            $table->timestamps();
            $table->primary(['USERNAME','ACCOUNT_IMAGE']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('TB_GAME_IMAGE');
    }
}
