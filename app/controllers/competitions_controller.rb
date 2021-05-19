class CompetitionsController < ApplicationController
  def index
    matching_competitions = Competition.all

    @list_of_competitions = matching_competitions.order({ :created_at => :desc })

    render({ :template => "competitions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_competitions = Competition.where({ :id => the_id })

    @the_competition = matching_competitions.at(0)

    render({ :template => "competitions/show.html.erb" })
  end

  def create
    the_competition = Competition.new
    the_competition.name = params.fetch("query_name")
    the_competition.submissions = params.fetch("query_submissions")
    the_competition.league_id = params.fetch("query_league_id")

    if the_competition.valid?
      the_competition.save
      redirect_to("/competitions", { :notice => "Competition created successfully." })
    else
      redirect_to("/competitions", { :notice => "Competition failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_competition = Competition.where({ :id => the_id }).at(0)

    the_competition.name = params.fetch("query_name")
    the_competition.submissions = params.fetch("query_submissions")
    the_competition.league_id = params.fetch("query_league_id")

    if the_competition.valid?
      the_competition.save
      redirect_to("/competitions/#{the_competition.id}", { :notice => "Competition updated successfully."} )
    else
      redirect_to("/competitions/#{the_competition.id}", { :alert => "Competition failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_competition = Competition.where({ :id => the_id }).at(0)

    the_competition.destroy

    redirect_to("/competitions", { :notice => "Competition deleted successfully."} )
  end
end
