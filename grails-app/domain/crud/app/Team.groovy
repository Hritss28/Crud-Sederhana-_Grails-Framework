package crud.app

class Team {
    String name
    String negara
    String liga
    String logo

    static constraints = {
        name blank: false
        negara blank: false
        liga blank: false
        logo blank: false
    }
}