view: str_property_seg_v {
  sql_table_name: pedw.fact.strm_property_seg_f ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: primary_key {
    primary_key: yes
    sql: ${TABLE}.primary_key ;;
    hidden: yes
  }

  dimension: period_key {
    sql: ${TABLE}.period_key ;;
    hidden: yes
  }

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: date_sid {
    type: number
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------
  dimension: ty_bt {
    type: number
    sql: ${TABLE}.ty_bt ;;
    hidden: yes
  }

  dimension: ly_bt {
    type: number
    sql: ${TABLE}.ly_bt ;;
    hidden: yes
  }

  dimension: segment_sort_no {
    view_label: "Segment"
    label: "Segment Sort No"
    description: "Segment Sort Number"
    type: string
    sql: ${TABLE}.segment_sort_no ;;
    hidden: yes
  }

  dimension: segment_name {
    view_label: "Segment"
    label: "Segment Name"
    description: "Segment Name"
    type: string
    sql: ${TABLE}.segment_name ;;
    order_by_field: segment_sort_no
  }

  #-------------------------------------------------------------------------------------------
  #-- property
  #-------------------------------------------------------------------------------------------

  dimension: property_room_avail_cnt {
    type: number
    sql: ${TABLE}.property_room_avail_cnt ;;
    hidden: yes
  }

  dimension: property_room_sold_cnt {
    type: number
    sql: ${TABLE}.property_room_sold_cnt ;;
    hidden: yes
  }

  dimension: property_room_rev_amt {
    type: number
    sql: ${TABLE}.property_room_rev_amt ;;
    hidden: yes
  }

  dimension: property_rbe_rev_amt {
    type: number
    sql: ${TABLE}.property_rbe_rev_amt ;;
    hidden: yes
  }

  dimension: property_room_other_rev_amt {
    type: number
    sql: ${TABLE}.property_room_other_rev_amt ;;
    hidden: yes
  }

  dimension: property_rev_amt {
    type: number
    sql: ${TABLE}.property_rev_amt ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- compset
  #-------------------------------------------------------------------------------------------

  dimension: compset_room_avail_cnt {
    type: number
    sql: ${TABLE}.compset_room_avail_cnt ;;
    hidden: yes
  }

  dimension: compset_room_sold_cnt {
    type: number
    sql: ${TABLE}.compset_room_sold_cnt ;;
    hidden: yes
  }

  dimension: compset_room_rev_amt {
    type: number
    sql: ${TABLE}.compset_room_rev_amt ;;
    hidden: yes
  }

  dimension: compset_rbe_rev_amt {
    type: number
    sql: ${TABLE}.compset_rbe_rev_amt ;;
    hidden: yes
  }

  dimension: compset_room_other_rev_amt {
    type: number
    sql: ${TABLE}.compset_room_other_rev_amt ;;
    hidden: yes
  }

  dimension: compset_rev_amt {
    type: number
    sql: ${TABLE}.compset_rev_amt ;;
    hidden: yes
  }

}
