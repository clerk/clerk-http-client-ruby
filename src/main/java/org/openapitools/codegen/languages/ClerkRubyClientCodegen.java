package org.openapitools.codegen.languages;

import java.io.File;
import java.io.Writer;

import org.openapitools.codegen.CodegenConfig;
import org.openapitools.codegen.meta.GeneratorMetadata;
import org.openapitools.codegen.meta.Stability;

import com.samskivert.mustache.Mustache;
import com.samskivert.mustache.Template;

public class ClerkRubyClientCodegen extends RubyClientCodegen implements CodegenConfig {

    public static final String GEM_NAME = "gemName";
    public static final String MODULE_NAME = "moduleName";

    public ClerkRubyClientCodegen() {
        super();

        // Set the output folder and template directory
        outputFolder = "generated-code" + File.separator + "ruby";
        templateDir = "ruby-client";

        // Set metadata for the generator
        generatorMetadata = GeneratorMetadata.newBuilder(generatorMetadata)
                .stability(Stability.STABLE)
                .build();

        // Add snake_case lambda
        additionalProperties.put("snakecase", (Mustache.Lambda) (Template.Fragment fragment, Writer writer) -> {
            writer.write(toSnakeCase(fragment.execute()));
        });

        additionalProperties.put("remove_api_suffix", (Mustache.Lambda) (Template.Fragment fragment, Writer writer) -> {
            writer.write(removeApiSuffix(fragment.execute()));
        });

        additionalProperties.put("sdk_root_prefix", "Clerk");
        additionalProperties.put("sdk_module_prefix", additionalProperties.get("sdk_root_prefix") + "::SDK");
    }

    @Override
    public String getName() {
        return "clerk-ruby";
    }

    @Override
    public String getHelp() {
        return "Generates a Ruby client library based on the Clerk requirements.";
    }

    @Override
    public String toOperationId(String operationId) {
        String newOperationId = normalizeCommonAcronyms(operationId);
        return super.toOperationId(newOperationId);
    }

    @Override
    public String toVarName(final String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toVarName(newName);
    }

    @Override
    public String toParamName(String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toParamName(newName);
    }

    @Override
    public String toModelFilename(String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toModelFilename(newName);
    }

    @Override
    public String toModelDocFilename(String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toModelDocFilename(newName);
    }

    @Override
    public String toApiFilename(final String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toApiFilename(newName);
    }

    @Override
    public String toApiDocFilename(String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toApiDocFilename(newName);
    }

    @Override
    public String toApiTestFilename(String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toApiTestFilename(newName);
    }

    @Override
    public String toModelTestFilename(String name) {
        String newName = normalizeCommonAcronyms(name);
        return super.toModelTestFilename(newName);
    }

    private String removeApiSuffix(String name) {
        return name.replaceAll("Api$", "");
    }

    private String normalizeCommonAcronyms(String name) {
        String result = name;

        result = result.replaceAll("OAuth", "Oauth");
        result = result.replaceAll("URL", "Url");
        result = result.replaceAll("CName", "Cname");

        return result;
    }

    private String toSnakeCase(String name) {
        String result = name;

        // Normalize common acronyms
        result = normalizeCommonAcronyms(result);

        // Handle acronyms first
        result = result.replaceAll("([A-Z]+)([A-Z][a-z])", "$1_$2");

        // Handle camelCase
        result = result.replaceAll("([a-z])([A-Z])", "$1_$2");

        // Convert to lowercase
        return result.toLowerCase();
    }
}
