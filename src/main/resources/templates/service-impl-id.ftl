package ${packageName};

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.lu.web.base.BaseServiceImpl;
import cn.lu.web.mapper.CrudMapper;

<#list imports as import>
import ${import.name};
</#list>

/**
 * ${classRemark}
 *
 * @author ${author}
 * @date ${date}
 */
@Service
public class ${className} extends BaseServiceImpl<${modelClassName}, ${paramClassName}> implements ${serviceClassName} {

    @Autowired
    private ${mapperClassName} ${mapperObjectName};

    @Override
    public CrudMapper<${modelClassName}> getMapper() {
        return ${mapperObjectName};
    }
}