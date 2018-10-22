view: inntopia_dimcustomer {
  sql_table_name: PRAW_inntopia.dbo.dimevent ;;
    dimension:  CUSTOMERKEY {
    sql: ${TABLE}.CUSTOMERKEY ;;
    }
    dimension:  FAMILYKEY {
    sql: ${TABLE}.FAMILYKEY ;;
    }
    dimension:  ISHOH {
    sql: ${TABLE}.ISHOH ;;
    }
    dimension:  FIRSTNAME {
    sql: ${TABLE}.FIRSTNAME ;;
    }
    dimension:  LASTNAME {
    sql: ${TABLE}.LASTNAME ;;
    }
    dimension:  BIRTHDATE {
    sql: ${TABLE}.BIRTHDATE ;;
    }
    dimension:  GENDER {
    sql: ${TABLE}.GENDER ;;
    }
    dimension:  FULLADDRESS {
    sql: ${TABLE}.FULLADDRESS ;;
    }
    dimension:  CITY {
    sql: ${TABLE}.CITY ;;
    }
    dimension:  STATE {
    sql: ${TABLE}.STATE ;;
    }
    dimension:  POSTALCODE {
    sql: ${TABLE}.POSTALCODE ;;
    }
    dimension:  ZIP5 {
    sql: ${TABLE}.ZIP5 ;;
    }
    dimension:  COUNTY {
    sql: ${TABLE}.COUNTY ;;
    }
    dimension:  MSA {
    sql: ${TABLE}.MSA ;;
    }
    dimension:  SUBREGION {
    sql: ${TABLE}.SUBREGION ;;
    }
    dimension:  REGION {
    sql: ${TABLE}.REGION ;;
    }
    dimension:  COUNTRY {
    sql: ${TABLE}.COUNTRY ;;
    }
    dimension:  MAJORAIRPORTCODE {
    sql: ${TABLE}.MAJORAIRPORTCODE ;;
    }
    dimension:  NEARESTAIRPORTCODE {
    sql: ${TABLE}.NEARESTAIRPORTCODE ;;
    }
    dimension:  ISMAILABLE {
    sql: ${TABLE}.ISMAILABLE ;;
    }
    dimension:  AREACODE {
    sql: ${TABLE}.AREACODE ;;
    }
    dimension:  PHONENUMBER {
    sql: ${TABLE}.PHONENUMBER ;;
    }
    dimension:  ISPHONEABLE {
    sql: ${TABLE}.ISPHONEABLE ;;
    }
    dimension:  CREATEDATE {
    sql: ${TABLE}.CREATEDATE ;;
    }
    dimension:  AGE {
    sql: ${TABLE}.AGE ;;
    }
    dimension:  ISPRIMARYEMAILCONTACT {
    sql: ${TABLE}.ISPRIMARYEMAILCONTACT ;;
    }
    dimension:  LATITUDE {
    sql: ${TABLE}.LATITUDE ;;
    }
    dimension:  LONGITUDE {
    sql: ${TABLE}.LONGITUDE ;;
    }
    dimension:  ORIGIN {
    sql: ${TABLE}.ORIGIN ;;
    }
    dimension:  UPDATEDATE {
    sql: ${TABLE}.UPDATEDATE ;;
    }
    dimension:  RESENDFLAG {
    sql: ${TABLE}.RESENDFLAG ;;
    }
    dimension:  TITLE {
    sql: ${TABLE}.TITLE ;;
    }
#---------------------------------------------------------------------
#----MEASURES---------
#---------------------------------------------------------------------
    measure: record_cnt {
      label: "Count(*)"
      description: "Count of records"
      type: number
    sql: count(*) ;;
    }
    measure: avg_customer_age{
      label: "Avg Age"
      description: "Average Customer Age"
      type: average
    }
}
