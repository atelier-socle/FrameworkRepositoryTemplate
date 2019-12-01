#!/bin/sh

######################################################################
#
######################################################################

FRAMEWORK_NAME="${1}"
PROJECT_DESTINATION="${2}"
OLD_FRAMEWORK_NAME="MyFramework"

_usage() {
    printf -- "Usage: %s FRAMEWORK_NAME PROJECT_DESTINATION" "${0}"
    exit 1
}

_rename_filename() {
    local file app_name rename
    file="${1}"

    if  [[ "$file" != "*${OLD_FRAMEWORK_NAME}*" ]]
    then
        rename=$(echo "${file}" | sed -E "s/${OLD_FRAMEWORK_NAME}/${FRAMEWORK_NAME}/g")
        mv "${file}" "${rename}" &> /dev/null
    fi
}

_rename_file() {
    local file app_name
    file="${1}"
    if  [[ "${file}" != *.DS_Store ]] && [[ "${file}" != *.strings ]]
    then
        sed -Ei '' "s/${OLD_FRAMEWORK_NAME}/${FRAMEWORK_NAME}/g" "${file}"
    fi
}

_main() {
    cp -prf . "${PROJECT_DESTINATION}"
    rm -rf "${PROJECT_DESTINATION}/.git"
    rm -f "${PROJECT_DESTINATION}/README.md"
    mv "${PROJECT_DESTINATION}/README_future.md" "${PROJECT_DESTINATION}/README.md"
    rm "${PROJECT_DESTINATION}/prepare_repository.sh"

    find "${PROJECT_DESTINATION}" | while read line
    do
      _rename_filename "${line}"
    done

    find "${PROJECT_DESTINATION}" -type f -print0 | while read -d $'\0' file;
    do
        _rename_file "${file}"
    done

    echo "Your project is ready at ${PROJECT_DESTINATION}"
    open ${PROJECT_DESTINATION}
}

######################################################################
# main script
######################################################################

if [ "$#" -ne 2 ] ; then
    _usage
fi

test ! "${FRAMEWORK_NAME}" && echo "please set FRAMEWORK_NAME" && _usage
test ! "${PROJECT_DESTINATION}" && echo "please set destination" && _usage

_main