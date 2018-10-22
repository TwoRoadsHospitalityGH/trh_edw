view: inntopia_dimlodging {
  sql_table_name: PRAW_inntopia.dbo.dimlodging ;;

    dimension:  EVENTID {
      sql: ${TABLE}.EVENTID ;;
    }

    dimension:  SOURCESYSTEMCODE  {
      sql: ${TABLE}.SOURCESYSTEMCODE ;;
    }

    dimension:  SOURCEDESCRIPTION  {
      sql: ${TABLE}.SOURCEDESCRIPTION ;;
    }

    dimension:  CUSTOMERKEY  {
      sql: ${TABLE}.CUSTOMERKEY ;;
    }

    dimension:  FAMILYKEY  {
      sql: ${TABLE}.FAMILYKEY ;;
    }

    dimension:  EVENTSTATEKEY  {
      sql: ${TABLE}.EVENTSTATEKEY ;;
    }

    dimension:  EVENTSTATE  {
      sql: ${TABLE}.EVENTSTATE ;;
    }

    dimension:  BOOKINGDATEKEY  {
      sql: ${TABLE}.BOOKOINGDATEKEY ;;
    }

    dimension:  BOOKINGDATE  {
      sql: ${TABLE}.BOOKINGDATE ;;
    }

    dimension:  ARRIVALDATEKEY  {
      sql: ${TABLE}.ARRIVALDATEKEY ;;
    }

    dimension:  NEXTARRIVALIND  {
      sql: ${TABLE}.NEXTARRIVALIND ;;
    }

    dimension:  DEPARTUREDATEKEY  {
      sql: ${TABLE}.DEPARTUREDATEKEY ;;
    }

    dimension:  LASTDEPARTUREDATEIND  {
      sql: ${TABLE}.LASTDEPARTUREDATEIND ;;
    }

    dimension:  IATANUMBER  {
      sql: ${TABLE}.IATANUMBER ;;
    }

    dimension: LOCATIONKEY {
      sql: ${TABLE}.LOCATIONKEY ;;
    }

    dimension: LOCATIONSOURCESYSTEMKEY {
      sql: ${TABLE}.LOCATIONSOURCESYSTEMKEY ;;
    }

    dimension: LOCATIONDESCRIPTION {
      sql: ${TABLE}.LOCATIONDESCRIPTION ;;
    }

    dimension: RESORTDETAIL {
      sql: ${TABLE}.RESORTDETAIL ;;
    }

    dimension: RESORT {
      sql: ${TABLE}.RESORT ;;
    }

    dimension: SOURCEOFBUSINESSDESCRIPTION {
      sql: ${TABLE}.SOURCEOFBUSINESSDESCRIPTION ;;
    }

    dimension: SOURCEOFBUSINESSGROUP {
      sql: ${TABLE}.SOURCEOFBUSINESSGROUP ;;
    }

    dimension: SOURCEOFBUSINESSSYSTEMKEY {
      sql: ${TABLE}.SOURCEOFBUSINESSSYSTEMKEY ;;
    }

    dimension: RATEPLANDESCRIPTION {
      sql: ${TABLE}.RATEPLANDESCRIPTION ;;
    }

    dimension: RATEPLANGROUP {
      sql: ${TABLE}.RATEPLANGROUP ;;
    }

    dimension: RATEPLANSOURCESYSTEMKEY  {
      sql: ${TABLE}.RATEPLANSOURCESYSTEMKEY ;;
    }

    dimension: UPDATEDATE {
      sql: ${TABLE}.UPDATEDATE ;;
    }

    dimension: BOOKINGCHANNEL {
      sql: ${TABLE}.BOOKINGCHANNEL ;;
    }

    dimension: CENREZID {
      sql: ${TABLE}.CENREZID ;;
    }

    dimension: MARKETSEGMENTDESCRIPTION {
      sql: ${TABLE}.MARKETSEGMENTDESCRIPTION ;;
    }

    dimension: MARKETSEGMENTGROUP {
      sql: ${TABLE}.MARKETSEGMENTGROUP ;;
    }

    dimension: MARKETSEGMENTSOURCESYSTEMKEY {
      sql: ${TABLE}.MARKETSEGMENTSOURCESYSTEMKEY ;;
    }

    dimension: SEASONID {
      sql: ${TABLE}.SEASONID ;;
    }

    dimension: SEASON {
      sql: ${TABLE}.SEASON ;;
    }

    dimension: YEAR {
      sql: ${TABLE}.YEAR ;;
    }

    dimension: HOLIDAY {
      sql: ${TABLE}.HOLIDAY ;;
    }

    dimension: LEADTIME {
      sql: ${TABLE}.LEADTIME ;;
    }

    dimension: ARRIVALDAYOFWEEK {
      sql: ${TABLE}.ARRIVALDAYOFWEEK ;;
    }

    dimension: DEPARTUREDAYOFWEEK {
      sql: ${TABLE}.DEPARTUREDAYOFWEEK ;;
    }

    dimension: FISCALYEAR {
      sql: ${TABLE}.FISCALYEAR ;;
    }

    dimension: CREATEDATE {
      sql: ${TABLE}.CREATEDATE ;;
    }

    dimension: LODGINGKEY {
      sql: ${TABLE}.LODGINGKEY ;;
    }

    dimension: LOCALCURRENCYCODE {
      sql: ${TABLE}.LOCALCURRENCYCODE ;;
    }

    dimension: SOURCESYSTEMCUSTOMERKEY {
      sql: ${TABLE}.SOURCESYSTEMCUSTOMERKEY ;;
    }

    dimension: RESENDFLAG {
      sql: ${TABLE}.RESENDFLAG ;;
    }

    dimension: AGENCYCONTACT {
      sql: ${TABLE}.AGENCYCONTACT ;;
    }

    dimension: AGENCYLOCATION {
      sql: ${TABLE}.AGENCYLOCATION ;;
    }

    dimension: AGENCYNAME {
      sql: ${TABLE}.AGENCYNAME ;;
    }

    dimension: BOOKINGUSER {
      sql: ${TABLE}.BOOKINGUSER ;;
    }

    dimension: BOOKINGUSERID {
      sql: ${TABLE}.BOOKINGUSERID ;;
    }

    dimension: CANCELLATIONID {
      sql: ${TABLE}.CANCELLATIONID ;;
    }

    dimension: CHECKINAGENT {
      sql: ${TABLE}.CHECKINAGENT ;;
    }

    dimension: CHECKOUTAGENT {
      sql: ${TABLE}.CHECKOUTAGENT ;;
    }

    dimension: EXTERNALORDERID {
      sql: ${TABLE}.EXTERNALORDERID ;;
    }

    dimension: EXTERNALSOURCE {
      sql: ${TABLE}.EXTERNALSOURCE ;;
    }

    dimension: GROUPCODE {
      sql: ${TABLE}.GROUPCODE ;;
    }

    dimension: GROUPCONTACT {
      sql: ${TABLE}.GROUPCONTACT ;;
    }

    dimension: GROUPLOCATION {
      sql: ${TABLE}.GROUPLOCATION ;;
    }

    dimension: GROUPNAME {
      sql: ${TABLE}.GROUPNAME ;;
    }

    dimension: LASTEDITUSER {
      sql: ${TABLE}.LASTEDITUSER ;;
    }

    dimension: LEVEL {
      sql: ${TABLE}.LEVEL ;;
    }

    dimension: OTHERINPARTY {
      sql: ${TABLE}.OTHERINPARTY ;;
    }

    dimension: PAYMENTTYPE {
      sql: ${TABLE}.PAYMENTTYPE ;;
    }

    dimension: PHONEIN {
      sql: ${TABLE}.PHONEIN ;;
    }

    dimension: PRICEBASIS {
      sql: ${TABLE}.PRICEBASIS ;;
    }

    dimension: PRINTRATE {
      sql: ${TABLE}.PRINTRATE ;;
    }

    dimension: RATETYPE {
      sql: ${TABLE}.RATETYPE ;;
    }

    dimension: RESERVATIONGUESTNAME {
      sql: ${TABLE}.RESERVATIONGUESTNAME ;;
    }

    dimension: ROOMNUMBER {
      sql: ${TABLE}.ROOMNUMBER ;;
    }

    dimension: SECRETARYCOD {
      sql: ${TABLE}.SECRETARYCODE ;;
    }

    dimension: SPECIAL {
      sql: ${TABLE}.SPECIAL ;;
    }

    dimension: UNITRATING {
      sql: ${TABLE}.UNITRATING ;;
    }

    dimension: UNITTYPE {
      sql: ${TABLE}.UNITTYPE ;;
    }

    dimension: UNITTYPEDESCRIPTION {
      sql: ${TABLE}.UNITTYPEDESCRIPTION ;;
    }

    dimension: BRAND {
      sql: ${TABLE}.BRAND ;;
    }

    dimension: HOTELID {
      sql: ${TABLE}.HOTELID ;;
    }

    dimension: CONFIRMATIONID {
      sql: ${TABLE}.CONFIRMATIONID ;;
    }

    dimension: HOTELCODE {
      sql: ${TABLE}.HOTELCODE ;;
    }

    dimension: PRICEBASISDESCRIPTION {
      sql: ${TABLE}.PRICEBASISDESCRIPTION ;;
    }

    dimension: SHAREPAY {
      sql: ${TABLE}.SHAREPAY ;;
    }

    dimension: GUARANTEECODE {
      sql: ${TABLE}.GUARANTEECODE ;;
    }

    dimension: RESERVATIONFIRSTNAME {
      sql: ${TABLE}.RESERVATIONLASTNAME ;;
    }

    dimension: RESERVATIONLASTNAME {
      sql: ${TABLE}.RESERVATIONLASTNAME ;;
    }

    dimension: SUBMARKETCODE {
      sql: ${TABLE}.SUBMARKETCODE ;;
    }

    dimension: UNITNAME {
      sql: ${TABLE}.UNITNAME ;;
    }

    dimension: REPORTMARKETSEGMENT {
      sql: ${TABLE}.REPORTMARKETSEGMENT ;;
    }

    dimension: RESERVATIONCONTACT {
      sql: ${TABLE}.RESERVATIONCONTACT ;;
    }

    dimension: CHAIN {
      sql: ${TABLE}.CHAIN ;;
    }

    dimension: VIPSTATUS {
      sql: ${TABLE}.VIPSTATUS ;;
    }

    dimension: BUILDINGCODE {
      sql: ${TABLE}.BUILDINGCODE ;;
    }

    dimension: BUILDINGDESC {
      sql: ${TABLE}.BUILDINGDESC ;;
    }

    dimension: AUDITNOTES {
      sql: ${TABLE}.AUDITNOTES ;;
    }

    dimension: CANCELLATIONDATE {
      sql: ${TABLE}.CANCELLATIONDATE ;;
    }

    dimension: OTHER {
      sql: ${TABLE}.OTHER ;;
    }

    dimension: SOURCECURRENCYCODE {
      sql: ${TABLE}.SOURCECURRENCYCODE ;;
    }

    dimension: CHANNELCODE {
      sql: ${TABLE}.CHANNELCODE ;;
    }

    dimension: CHANNELDESCRIPTION {
      sql: ${TABLE}.CHANNELDESCRIPTION ;;
    }

    dimension: COMMENTS {
      sql: ${TABLE}.COMMENTS ;;
    }

    dimension: GUESTTYPE {
      sql: ${TABLE}.GUESTTYPE ;;
    }

    dimension: KEYWORD {
      sql: ${TABLE}.KEYWORD ;;
    }

    dimension: ORIGINCODE {
      sql: ${TABLE}.ORIGINCODE ;;
    }

    dimension: SEGMENT1CODE {
      sql: ${TABLE}.SEGMENT1CODE ;;
    }

    dimension: SEGMENT1DESCRIPTION {
      sql: ${TABLE}.SEGMENT1DESCRIPTION ;;
    }

    dimension: SEGMENT2CODE {
      sql: ${TABLE}.SEGMENT2CODE ;;
    }

    dimension: SEGMENT2DESCRIPTION {
      sql: ${TABLE}.SEGMENT2DESCRIPTION ;;
    }

#-----------------------------------------------------------------------------
#-- measures
#-----------------------------------------------------------------------------

    measure: record_cnt {
      label: "Count(*)"
      description: "Count of records"
      type: number
      sql: count(*) ;;
    }

    measure:  event_count {
      label: "Events"
      description: "Count of distinct events."
      type: count_distinct
      sql: ${EVENTID} ;;
    }


    measure: TOTALROOMS {
      label: "Rooms"
      description: "Booked rooms"
      type: sum
      sql: ${TABLE}.TOTALROOMS ;;
    }

    measure: BALANCEDUE {
      label: "Balance"
      description: "Balance Due"
      type: sum
      sql: ${TABLE}.BALANCEDUE ;;
    }

    measure: DISCOUNT {
      label: "Discount"
      description: "Discount"
      type: sum
      sql: ${TABLE}.DISCOUNT ;;
    }

    measure: FEES {
      label: "Fees"
      description: "Lodging Fees"
      type: sum
      sql: ${TABLE}.FEES ;;
    }

    measure:  LODGINGNIGHTS  {
      label: "Lodging nights"
      description: "Lodging room nights"
      type:  sum
      sql: ${TABLE}.LODGINGNIGHTS ;;
    }

    measure:  LODGINGAMOUNT  {
      label: "Lodging Amount"
      description: "Lodging Revenue Amount"
      type: sum
      sql: ${TABLE}.LODGINGAMOUNT ;;
    }

    measure:  ADULTINPARTY  {
      label: "Num of Adults"
      description: "Number of Adults in party"
      type: sum
      sql: ${TABLE}.ADULTINPARTY ;;
    }

    measure:  CHILDRENINPARTY  {
      label: "Num of Children"
      description: "Number of Children in party"
      type: sum
      sql: ${TABLE}.CHILDRENINPARTY ;;
    }

    measure: LODGINGAMOUNTLOCAL {
      label: "Local Revenue"
      description: "Local currency lodging revenue"
      type: sum
      sql: ${TABLE}.LODGINGAMOUNTLOCAL ;;
    }

    measure: ROOMRATE {
      label: "Room Rate"
      description: "Room Rate"
      type: sum
      sql: ${TABLE}.ROOMRATE ;;
  }
  }
