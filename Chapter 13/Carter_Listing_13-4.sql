DECLARE @condition_id INT   ;

EXEC msdb.dbo.sp_syspolicy_add_condition 
        @name='AvoidCodeInjection', 
        @description='', 
        @facet='StoredProcedure', 
        @expression='<Operator>
                        <TypeClass>Bool</TypeClass>
                        <OpType>EQ</OpType>
                        <Count>2</Count>
                        <Attribute>
                                <TypeClass>Numeric</TypeClass>
                                <Name>ExecutionContext</Name>
                        </Attribute>
                        <Function>
                                <TypeClass>Numeric</TypeClass>
                                <FunctionType>Enum</FunctionType>
                                <ReturnType>Numeric</ReturnType>
                                <Count>2</Count>
                        <Constant>
                                <TypeClass>String</TypeClass>
                                <ObjType>System.String</ObjType>
                                <Value>Microsoft.SqlServer.Management.Smo.ExecutionContext</Value>
                        </Constant>
                        <Constant>
                                <TypeClass>String</TypeClass>
                                <ObjType>System.String</ObjType>
                                <Value>Caller</Value>
                        </Constant>
                </Function>
        </Operator>', 
@is_name_condition=0, 
@obj_name='', 
@condition_id=@condition_id OUTPUT ;

GO 
