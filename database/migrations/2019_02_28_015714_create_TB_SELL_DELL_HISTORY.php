<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTBSELLDELLHISTORY extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('TB_SELL_DELL_HISTORY', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('HIS_ID', 30);
            $table->DATETIME('HIS_DATE');
            $table->string('USER_ACCOUNT_ID', 30);
            $table->string('GAME_ACCOUNT_ID', 30);
            $table->timestamps();
            $table->primary(['HIS_ID']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('TB_SELL_DELL_HISTORY');
    }
}
