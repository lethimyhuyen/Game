<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTBCARDDEALHISTORY extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('TB_CARD_DEAL_HISTORY', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('HIS_ID', 30);
            $table->datime('HIS_TIME');
            $table->string('COMPANY', 30);
            $table->string('CARD_NUMBER', 30);
            $table->string('SERIAL_NUMBER', 30);
            $table->integer('DENOMINATIONS');
            $table->string('RESULT', 30);
            $table->string('ID_USER', 30);
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
        Schema::dropIfExists('TB_CARD_DEAL_HISTORY');
    }
}
