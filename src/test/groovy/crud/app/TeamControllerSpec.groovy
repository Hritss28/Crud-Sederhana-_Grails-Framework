package crud.app

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class TeamControllerSpec extends Specification implements ControllerUnitTest<TeamController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
