@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZAEMPLEADO'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZI_EMPLEADO
  as select from zaempleado as Empleado
  association [0..*] to ZI_SOLICITUD as Solicitud
  on $projection.Idempleado = Solicitud.Idempleado
{
  key empleado_uuid as EmpleadoUUID,
  key idempleado as Idempleado,
  usuario as Usuario,
  nombre as Nombre,
  cargo as Cargo,
  frente as Frente,
  email as Email,
  vacaciones_dispo as VacacionesDispo,
  diacumple_dispo as DiacumpleDispo,
  diaprepara_dispo as DiapreparaDispo,
  diaflex_dispo as DiaflexDispo,
  mediodili_dispo as MediodiliDispo,
  medioflex_dispo as MedioflexDispo,
  mediofree_dispo as MediofreeDispo,
  dia_familia     as DiaFamilia,
  aprobador as Aprobador,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  
  Solicitud
}
