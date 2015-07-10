macro(set_sources)
    set(${PROJECT_NAME}_SOURCES
        ${ARGN}
        )

    set_property(GLOBAL PROPERTY ${PROJECT_NAME}_SOURCES_PROPERTY ${${PROJECT_NAME}_SOURCES})
endmacro()

macro(set_public_headers_directory directory)

    install(DIRECTORY ${directory}
        ${ARGN}
        FILES_MATCHING
        PATTERN "*.h"
        PATTERN "*.hpp"
        )

    get_property(${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES GLOBAL PROPERTY ${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES_PROPERTY)
    set(${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES ${${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES} ${directory})
    set_property(GLOBAL PROPERTY ${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES_PROPERTY ${${PROJECT_NAME}_PUBLIC_HEADERS_DIRECTORIES})

endmacro()
