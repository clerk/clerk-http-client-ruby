package org.openapitools.codegen.languages;

import org.openapitools.codegen.CodegenConfig;
import org.openapitools.codegen.CodegenType;
import org.openapitools.codegen.SupportingFile;
import org.openapitools.codegen.meta.features.*;
import org.openapitools.codegen.meta.GeneratorMetadata;
import org.openapitools.codegen.meta.Stability;

import java.io.File;
import org.apache.commons.lang3.StringUtils;

public class ClerkRubyClientCodegen extends RubyClientCodegen implements CodegenConfig {

    public static final String GEM_NAME = "gemName";
    public static final String MODULE_NAME = "moduleName";
    
    protected String gemName;
    protected String moduleName;

    public ClerkRubyClientCodegen() {
        super();
        
        // Set the output folder and template directory
        outputFolder = "generated-code" + File.separator + "ruby";
        templateDir = "ruby-client";
        
        // Set metadata for the generator
        generatorMetadata = GeneratorMetadata.newBuilder(generatorMetadata)
            .stability(Stability.STABLE)
            .build();
    }

    @Override
    public String getName() {
        return "clerk-ruby";
    }

    @Override
    public String getHelp() {
        return "Generates a Ruby client library based on the Clerk requirements.";
    }

    // @Override
    // public String toModelName(String name) {
    //     // First, use the parent class's sanitization
    //     String sanitizedName = super.toModelName(name);
        
    //     // Convert to snake_case
    //     return toSnakeCase(sanitizedName);
    // }

    private String toSnakeCase(String name) {
        String result = name;
        
        // Handle acronyms first
        result = result.replaceAll("([A-Z]+)([A-Z][a-z])", "$1_$2");
        
        // Handle camelCase
        result = result.replaceAll("([a-z])([A-Z])", "$1_$2");
        
        // Convert to lowercase
        return result.toLowerCase();
    }

    @Override
    public String escapeReservedWord(String name) {
        if(this.reservedWordsMappings().containsKey(name)) {
            return this.reservedWordsMappings().get(name);
        }
        return "_" + name;
    }
} 