package crud.app

import grails.gorm.transactions.Transactional

class TeamController {

    def index() {
        [teams: Team.list()]
    }

    def create() {
        [team: new Team()]
    }

    def save(Team team) {
        if (team.save()) {
            redirect action: "index"
        } else {
            render view: "create", model: [team: team]
        }
    }

    def edit(Long id) {
        Team team = Team.get(id)
        if (!team) {
            flash.message = "Team dengan ID ${id} tidak ditemukan."
            redirect action: "index"
            return
        }
        [team: team]
    }

    @Transactional
    def update(Long id, Team team) {
        Team existingTeam = Team.get(id)
        if (!existingTeam) {
            flash.message = "Team dengan ID ${id} tidak ditemukan."
            redirect action: "index"
            return
        }

        existingTeam.properties = team.properties

        if (existingTeam.save(flush: true)) {
            flash.message = "Team dengan ID ${id} berhasil keupdate."
            redirect action: "index"
        } else {
            flash.message = "Error saat update team dengan ID ${id}."
            render view: "edit", model: [team: existingTeam]
        }
    }

    @Transactional
    def delete(Long id) {
        Team team = Team.get(id)
        if (team) {
            try {
                team.delete(flush: true)
                flash.message = "Team dengan ID ${id} berhasil ke hapus."
            } catch (Exception e) {
                flash.message = "Error saat menghapus team dengan ID ${id}: ${e.message}"
            }
        } else {
            flash.message = "Team dengan ID ${id} tidak ditemukan."
        }
        redirect action: "index"
    }
}