<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatTBGAMEPRICEOFFER extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('TB_GAME_PRICE_OFFER', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('USERNAME', 30);
            $table->string('USER_ACCOUNT_ID', 30);
            $table->integer('USER_PRICE_OFFER');
            $table->integer('CURRENT_STATUS');
            $table->timestamps();
            $table->primary(['USERNAME','USER_ACCOUNT_ID']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('TB_GAME_PRICE_OFFER');
    }
}
