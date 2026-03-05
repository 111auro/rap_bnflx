@AccessControl.authorizationCheck: #CHECK --#MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZASOLICITUD'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZI_SOLICITUD
  as select from zasolicitud as Solicitud
  
  association [1..1] to ZI_EMPLEADO as Empleado
    on $projection.Idempleado    = Empleado.Idempleado
    and $projection.EmpleadoUUID = Empleado.EmpleadoUUID
{
  key solicitud_uuid as SolicitudUUID,
  key empleado_uuid  as EmpleadoUUID,
  key idempleado as Idempleado,
  fechainicio as Fechainicio,
  fechafin as Fechafin,
  diassolicitados as Diassolicitados,
  tiposolicitud as Tiposolicitud,
  jornada as Jornada,
  estado as Estado,
  fechadecision as Fechadecision,
  comentario as Comentario,
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
  
  Empleado
}
