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

    dimension:  BOOKINGDATE  {
      sql: ${TABLE}.BOOKINGDATE ;;
    }

    dimension:  IATANUMBER  {
      sql: ${TABLE}.IATANUMBER ;;
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
      sql: ${TABLE}.SOURCEOFBUSINESSDESCRIPTION;;
      label: "SourceChannelDetail"
    }

    dimension: SOURCEOFBUSINESSGROUP {
      sql: ${TABLE}.SOURCEOFBUSINESSGROUP ;;
      label: "SourceChannelGroup"
    }

    dimension: RATEPLANDESCRIPTION {
      sql: ${TABLE}.RATEPLANDESCRIPTION ;;
      label: "RatePlanDetail"
    }

    dimension: RATEPLANGROUP {
      sql: ${TABLE}.RATEPLANGROUP ;;
      label: "RatePlanGroup"
    }

    dimension: CENREZID {
      sql: ${TABLE}.CENREZID ;;
      label: "ReservationID"
    }

    dimension: MARKETSEGMENTDESCRIPTION {
      sql: ${TABLE}.MARKETSEGMENTDESCRIPTION ;;
      label: "MarketSegmentDetail"
    }

    dimension: LOCALCURRENCYCODE {
      sql: ${TABLE}.LOCALCURRENCYCODE ;;
    }

    dimension: SOURCESYSTEMCUSTOMERKEY {
      sql: ${TABLE}.SOURCESYSTEMCUSTOMERKEY ;;
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


    dimension: LEVEL {
      sql: ${TABLE}.LEVEL ;;
    }


    dimension: RESERVATIONGUESTNAME {
      sql: ${TABLE}.RESERVATIONGUESTNAME ;;
    }

    dimension: ROOMNUMBER {
      sql: ${TABLE}.ROOMNUMBER ;;
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

    dimension: PRICEBASISDESCRIPTION {
      sql: ${TABLE}.PRICEBASISDESCRIPTION ;;
    }

    dimension: REPORTMARKETSEGMENT {
      sql: ${TABLE}.REPORTMARKETSEGMENT ;;
      label: "MarketSegmentGroup"
    }

    dimension: CANCELLATIONDATE {
      sql: ${TABLE}.CANCELLATIONDATE ;;
    }


#-----------------------------------------------------------------------------
#-- measures
#-----------------------------------------------------------------------------


    measure:  event_count {
      label: "Event Count"
      description: "Count of distinct events."
      view_label: "  Measures"
      type: count_distinct
      sql: ${EVENTID} ;;
    }

    measure: DISCOUNT {
      label: "Discount"
      description: "Discount"
      view_label: "  Measures"
      type: sum
      sql: ${TABLE}.DISCOUNT ;;
    }

    measure: FEES {
      label: "Fees"
      description: "Lodging Fees"
      view_label: "  Measures"
      type: sum
      sql: ${TABLE}.FEES ;;
    }

    measure:  ADULTINPARTY  {
      label: "Num of Adults"
      description: "Number of Adults in party"
      view_label: "  Measures"
      type: sum
      sql: ${TABLE}.ADULTINPARTY ;;
    }

    measure:  CHILDRENINPARTY  {
      label: "Num of Children"
      description: "Number of Children in party"
      view_label: "  Measures"
      type: sum
      sql: ${TABLE}.CHILDRENINPARTY ;;
    }

  }
