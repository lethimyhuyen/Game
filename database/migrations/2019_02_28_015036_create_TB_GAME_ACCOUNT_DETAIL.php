<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTBGAMEACCOUNTDETAIL extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('TB_GAME_ACCOUNT_DETAIL', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('USERNAME', 30);
            $table->integer('GENERAL_NUMBER');
            $table->integer('SKIN_NUMBER');
            $table->integer('GEM_NUMBER');
            $table->integer('LEVEL_NUMBER');
            $table->string('BEST_RANK', 100);
            $table->string('CURRENT_RANK',30);
            $table->string('CLAN_NAME', 30);
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
        Schema::dropIfExists('TB_GAME_ACCOUNT_DETAIL');
    }
}
