package aei

class EmailDestinationConfig extends DestinationConfig {

    String sended_from
    String sended_to
    String subject
    String body
    Boolean send_confirmation

    static constraints = {
      sended_from email: true, nullable: true
      sended_to email: true
      subject nullable: false
      body nullable: false
      send_confirmation nullable: true
    }

    def beforeInsert () {
      if (sended_from == null)
        sended_from = "test@tarmac.com"
    }
}
