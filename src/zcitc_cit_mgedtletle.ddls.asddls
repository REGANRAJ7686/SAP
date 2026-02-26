@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCITCIT_MGEDTLETLE'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZCITC_CIT_MGEDTLETLE
  provider contract TRANSACTIONAL_QUERY
  as projection on ZCITR_CIT_MGEDTLETLE
  association [1..1] to ZCITR_CIT_MGEDTLETLE as _BaseEntity on $projection.ID = _BaseEntity.ID
{
  key ID,
  Firstname,
  Lastname,
  Age,
  Course,
  Courseduration,
  Status,
  Gender,
  Dob,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
