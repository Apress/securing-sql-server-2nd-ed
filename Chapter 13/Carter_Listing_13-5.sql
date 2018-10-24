DECLARE @object_set_id INT ;
DECLARE @target_set_id INT ;
DECLARE @policy_id INT ;

EXEC msdb.dbo.sp_syspolicy_add_object_set 
        @object_set_name='AvoidCodeInjection_ObjectSet', 
        @facet='StoredProcedure', 
        @object_set_id=@object_set_id OUTPUT ;


EXEC msdb.dbo.sp_syspolicy_add_target_set 
        @object_set_name='AvoidCodeInjection_ObjectSet', 
        @type_skeleton='Server/Database/StoredProcedure', 
        @type='PROCEDURE', 
        @enabled=True, 
        @target_set_id=@target_set_id OUTPUT ;


EXEC msdb.dbo.sp_syspolicy_add_target_set_level 
        @target_set_id=@target_set_id, 
        @type_skeleton='Server/Database/StoredProcedure', 
        @level_name='StoredProcedure', 
        @condition_name='',
        @target_set_level_id=0 ;


EXEC msdb.dbo.sp_syspolicy_add_target_set_level 
        @target_set_id=@target_set_id, 
        @type_skeleton='Server/Database', 
        @level_name='Database', 
        @condition_name='', 
        @target_set_level_id=0 ;

        
EXEC msdb.dbo.sp_syspolicy_add_policy 
        @name='AvoidCodeInjection',   
        @condition_name='AvoidCodeInjection', 
        @execution_mode=1,
        @is_enabled=1, 
        @policy_id=@policy_id OUTPUT, 
        @object_set='AvoidCodeInjection_ObjectSet' ;

GO 
