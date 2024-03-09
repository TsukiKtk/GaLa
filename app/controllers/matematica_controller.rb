class MatematicaController < ApplicationController
  def adicao
    @nm1 = rand(0..10)
    @nm2 = rand(0..10)

    @nm1_2 = rand(0..10)
    @nm2_2 = rand(0..10)

    render layout:'math'
  end

  def calculate
    @minha_resposta = params[:resposta].to_i
    @resposta_correta = params[:nm1].to_i + params[:nm2].to_i

    @minha_resposta_2 = params[:resposta_2].to_i
    @resposta_correta_2 = params[:nm1_2].to_i - params[:nm2_2].to_i


    if @minha_resposta == @resposta_correta
      flash[:notice] = "Resposta correta!"

    else
      flash[:alert] = "A soma correta de #{params[:nm1].to_i} + #{params[:nm2].to_i} = #{ @resposta_correta }"

    end

    if @minha_resposta_2 == @resposta_correta_2
      flash[:notice_2] = "Resposta Certa!!"

    else
      flash[:alert_2] = "A subtração de  #{params[:nm1_2].to_i} - #{params[:nm2_2].to_i} = #{ @resposta_correta_2 }"

    end
    redirect_to matematica_adicao_path
  end
end
