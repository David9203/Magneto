class MunicipiosController < ApplicationController

def create
    @region = Region.find(params[:region_id])
    @municipio = @region.municipios.create(params[:municipio].permit(:name, :code, :state))
    redirect_to region_path(@region)
  end

end
