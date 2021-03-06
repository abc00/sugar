# This file generated automatically:
# https://github.com/ruslo/sugar/wiki/Cross-platform-warning-suppression

# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

include(sugar_add_this_to_sourcelist)
sugar_add_this_to_sourcelist()

include(sugar_expected_number_of_arguments)
include(sugar_fatal_error)
include(sugar_status_debug)

function(sugar_generate_warning_flag_by_name warning_flags warning_name)
  sugar_expected_number_of_arguments(${ARGC} 2)

  sugar_status_debug("Flags by name: ${warning_name}")

  ### Check preconditions
  if(is_clang OR is_msvc OR is_gcc)
    # Supported compilers
  else()
    sugar_fatal_error("")
  endif()

  string(COMPARE EQUAL "ALL" "${warning_name}" is_all)
  if(is_all)
    # Skip this (already processed)
    set(${warning_flags} "" PARENT_SCOPE)
    return()
  endif()

  set(result "")

  ### c++98-compat
  string(COMPARE EQUAL "c++98-compat" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "c++98-compat")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### c++98-compat-pedantic
  string(COMPARE EQUAL "c++98-compat-pedantic" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "c++98-compat-pedantic")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### assign-base-inaccessible
  string(COMPARE EQUAL "assign-base-inaccessible" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4626")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### assign-could-not-be-generated
  string(COMPARE EQUAL "assign-could-not-be-generated" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4512")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### copy-ctor-could-not-be-generated
  string(COMPARE EQUAL "copy-ctor-could-not-be-generated" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4625")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### dflt-ctor-base-inaccessible
  string(COMPARE EQUAL "dflt-ctor-base-inaccessible" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4623")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### dflt-ctor-could-not-be-generated
  string(COMPARE EQUAL "dflt-ctor-could-not-be-generated" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4510")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### user-ctor-required
  string(COMPARE EQUAL "user-ctor-required" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4610")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### automatic-inline
  string(COMPARE EQUAL "automatic-inline" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4711")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### force-not-inlined
  string(COMPARE EQUAL "force-not-inlined" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4714")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### not-inlined
  string(COMPARE EQUAL "not-inlined" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4710")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unreferenced-inline
  string(COMPARE EQUAL "unreferenced-inline" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4514")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### behavior-change
  string(COMPARE EQUAL "behavior-change" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4350")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### bool-conversion
  string(COMPARE EQUAL "bool-conversion" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "bool-conversion")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### c++11-extensions
  string(COMPARE EQUAL "c++11-extensions" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "c++11-extensions")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### cast-align
  string(COMPARE EQUAL "cast-align" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "cast-align")
    endif()
    if(is_gcc)
      list(APPEND result "cast-align")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### catch-semantic-changed
  string(COMPARE EQUAL "catch-semantic-changed" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4571")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### conditional-uninitialized
  string(COMPARE EQUAL "conditional-uninitialized" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "conditional-uninitialized")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### constant-conditional
  string(COMPARE EQUAL "constant-conditional" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4127")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### constant-conversion
  string(COMPARE EQUAL "constant-conversion" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "constant-conversion")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### conversion
  string(COMPARE EQUAL "conversion" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "conversion")
    endif()
    if(is_gcc)
      list(APPEND result "conversion")
    endif()
    if(is_msvc)
      list(APPEND result "4244")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### conversion-loss
  string(COMPARE EQUAL "conversion-loss" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "conversion")
    endif()
    if(is_gcc)
      list(APPEND result "conversion")
    endif()
    if(is_msvc)
      list(APPEND result "4242")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### conversion-sign-extended
  string(COMPARE EQUAL "conversion-sign-extended" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4826")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### covered-switch-default
  string(COMPARE EQUAL "covered-switch-default" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "covered-switch-default")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### deprecated
  string(COMPARE EQUAL "deprecated" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "deprecated")
    endif()
    if(is_gcc)
      list(APPEND result "deprecated")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### deprecated-declarations
  string(COMPARE EQUAL "deprecated-declarations" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "deprecated-declarations")
    endif()
    if(is_gcc)
      list(APPEND result "deprecated-declarations")
    endif()
    if(is_msvc)
      list(APPEND result "4996")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### deprecated-objc-isa-usage
  string(COMPARE EQUAL "deprecated-objc-isa-usage" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "deprecated-objc-isa-usage")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### deprecated-register
  string(COMPARE EQUAL "deprecated-register" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "deprecated-register")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### digraphs-not-supported
  string(COMPARE EQUAL "digraphs-not-supported" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4628")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### disabled-macro-expansion
  string(COMPARE EQUAL "disabled-macro-expansion" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "disabled-macro-expansion")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### documentation
  string(COMPARE EQUAL "documentation" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "documentation")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### documentation-unknown-command
  string(COMPARE EQUAL "documentation-unknown-command" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "documentation-unknown-command")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### empty-body
  string(COMPARE EQUAL "empty-body" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "empty-body")
    endif()
    if(is_gcc)
      list(APPEND result "empty-body")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### enum-conversion
  string(COMPARE EQUAL "enum-conversion" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "enum-conversion")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### exit-time-destructors
  string(COMPARE EQUAL "exit-time-destructors" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "exit-time-destructors")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### extra-semi
  string(COMPARE EQUAL "extra-semi" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "extra-semi")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### format
  string(COMPARE EQUAL "format" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "format")
    endif()
    if(is_gcc)
      list(APPEND result "format")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### four-char-constants
  string(COMPARE EQUAL "four-char-constants" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "four-char-constants")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### global-constructors
  string(COMPARE EQUAL "global-constructors" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "global-constructors")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### ill-formed-comma-expr
  string(COMPARE EQUAL "ill-formed-comma-expr" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unused-value")
    endif()
    if(is_gcc)
      list(APPEND result "unused-value")
    endif()
    if(is_msvc)
      list(APPEND result "4548")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### implicit-fallthrough
  string(COMPARE EQUAL "implicit-fallthrough" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "implicit-fallthrough")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### inherits-via-dominance
  string(COMPARE EQUAL "inherits-via-dominance" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4250")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### int-conversion
  string(COMPARE EQUAL "int-conversion" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "int-conversion")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### invalid-offsetof
  string(COMPARE EQUAL "invalid-offsetof" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "invalid-offsetof")
    endif()
    if(is_gcc)
      list(APPEND result "invalid-offsetof")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### is-defined-to-be
  string(COMPARE EQUAL "is-defined-to-be" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4574")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### layout-changed
  string(COMPARE EQUAL "layout-changed" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4371")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### missing-braces
  string(COMPARE EQUAL "missing-braces" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "missing-braces")
    endif()
    if(is_gcc)
      list(APPEND result "missing-braces")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### missing-field-initializers
  string(COMPARE EQUAL "missing-field-initializers" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "missing-field-initializers")
    endif()
    if(is_gcc)
      list(APPEND result "missing-field-initializers")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### missing-noreturn
  string(COMPARE EQUAL "missing-noreturn" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "missing-noreturn")
    endif()
    if(is_gcc)
      list(APPEND result "missing-noreturn")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### missing-prototypes
  string(COMPARE EQUAL "missing-prototypes" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "missing-prototypes")
    endif()
    if(is_gcc)
      list(APPEND result "missing-prototypes")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### name-length-exceeded
  string(COMPARE EQUAL "name-length-exceeded" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4503")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### newline-eof
  string(COMPARE EQUAL "newline-eof" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "newline-eof")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### no-such-warning
  string(COMPARE EQUAL "no-such-warning" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4619")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### non-virtual-dtor
  string(COMPARE EQUAL "non-virtual-dtor" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "non-virtual-dtor")
    endif()
    if(is_gcc)
      list(APPEND result "non-virtual-dtor")
    endif()
    if(is_msvc)
      list(APPEND result "4265")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### object-layout-change
  string(COMPARE EQUAL "object-layout-change" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4435")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### old-style-cast
  string(COMPARE EQUAL "old-style-cast" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "old-style-cast")
    endif()
    if(is_gcc)
      list(APPEND result "old-style-cast")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### overloaded-virtual
  string(COMPARE EQUAL "overloaded-virtual" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "overloaded-virtual")
    endif()
    if(is_gcc)
      list(APPEND result "overloaded-virtual")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### padded
  string(COMPARE EQUAL "padded" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "padded")
    endif()
    if(is_gcc)
      list(APPEND result "padded")
    endif()
    if(is_msvc)
      list(APPEND result "4820")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### parentheses
  string(COMPARE EQUAL "parentheses" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "parentheses")
    endif()
    if(is_gcc)
      list(APPEND result "parentheses")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### pedantic
  string(COMPARE EQUAL "pedantic" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "pedantic")
    endif()
    if(is_gcc)
      list(APPEND result "pedantic")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### pointer-sign
  string(COMPARE EQUAL "pointer-sign" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "pointer-sign")
    endif()
    if(is_gcc)
      list(APPEND result "pointer-sign")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### return-type
  string(COMPARE EQUAL "return-type" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "return-type")
    endif()
    if(is_gcc)
      list(APPEND result "return-type")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### shadow
  string(COMPARE EQUAL "shadow" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "shadow")
    endif()
    if(is_gcc)
      list(APPEND result "shadow")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### shift-sign-overflow
  string(COMPARE EQUAL "shift-sign-overflow" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "shift-sign-overflow")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### shorten-64-to-32
  string(COMPARE EQUAL "shorten-64-to-32" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "shorten-64-to-32")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### sign-compare
  string(COMPARE EQUAL "sign-compare" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "sign-compare")
    endif()
    if(is_gcc)
      list(APPEND result "sign-compare")
    endif()
    if(is_msvc)
      list(APPEND result "4389")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### sign-conversion
  string(COMPARE EQUAL "sign-conversion" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "sign-conversion")
    endif()
    if(is_gcc)
      list(APPEND result "sign-conversion")
    endif()
    if(is_msvc)
      list(APPEND result "4365")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### signed-unsigned-compare
  string(COMPARE EQUAL "signed-unsigned-compare" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "sign-compare")
    endif()
    if(is_gcc)
      list(APPEND result "sign-compare")
    endif()
    if(is_msvc)
      list(APPEND result "4388")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### static-ctor-not-thread-safe
  string(COMPARE EQUAL "static-ctor-not-thread-safe" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4640")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### switch
  string(COMPARE EQUAL "switch" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "switch")
    endif()
    if(is_gcc)
      list(APPEND result "switch")
    endif()
    if(is_msvc)
      list(APPEND result "4062")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### switch-enum
  string(COMPARE EQUAL "switch-enum" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "switch-enum")
    endif()
    if(is_gcc)
      list(APPEND result "switch-enum")
    endif()
    if(is_msvc)
      list(APPEND result "4061")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### this-used-in-init
  string(COMPARE EQUAL "this-used-in-init" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4355")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### undef
  string(COMPARE EQUAL "undef" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "undef")
    endif()
    if(is_gcc)
      list(APPEND result "undef")
    endif()
    if(is_msvc)
      list(APPEND result "4668")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### uninitialized
  string(COMPARE EQUAL "uninitialized" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "uninitialized")
    endif()
    if(is_gcc)
      list(APPEND result "uninitialized")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unknown-pragmas
  string(COMPARE EQUAL "unknown-pragmas" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unknown-pragmas")
    endif()
    if(is_gcc)
      list(APPEND result "unknown-pragmas")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unreachable-code
  string(COMPARE EQUAL "unreachable-code" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unreachable-code")
    endif()
    if(is_gcc)
      list(APPEND result "unreachable-code")
    endif()
    if(is_msvc)
      list(APPEND result "4702")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unreachable-code-return
  string(COMPARE EQUAL "unreachable-code-return" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unreachable-code-return")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unsafe-conversion
  string(COMPARE EQUAL "unsafe-conversion" "${warning_name}" hit)
  if(hit)
    if(is_msvc)
      list(APPEND result "4191")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unused-but-set-variable
  string(COMPARE EQUAL "unused-but-set-variable" "${warning_name}" hit)
  if(hit)
    if(is_gcc)
      list(APPEND result "unused-but-set-variable")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unused-function
  string(COMPARE EQUAL "unused-function" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unused-function")
    endif()
    if(is_gcc)
      list(APPEND result "unused-function")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unused-label
  string(COMPARE EQUAL "unused-label" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unused-label")
    endif()
    if(is_gcc)
      list(APPEND result "unused-label")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unused-parameter
  string(COMPARE EQUAL "unused-parameter" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unused-parameter")
    endif()
    if(is_gcc)
      list(APPEND result "unused-parameter")
    endif()
    if(is_msvc)
      list(APPEND result "4100")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unused-value
  string(COMPARE EQUAL "unused-value" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unused-value")
    endif()
    if(is_gcc)
      list(APPEND result "unused-value")
    endif()
    if(is_msvc)
      list(APPEND result "4555")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### unused-variable
  string(COMPARE EQUAL "unused-variable" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "unused-variable")
    endif()
    if(is_gcc)
      list(APPEND result "unused-variable")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### used-but-marked-unused
  string(COMPARE EQUAL "used-but-marked-unused" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "used-but-marked-unused")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### weak-vtables
  string(COMPARE EQUAL "weak-vtables" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "weak-vtables")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### arc-bridge-casts-disallowed-in-nonarc
  string(COMPARE EQUAL "arc-bridge-casts-disallowed-in-nonarc" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "arc-bridge-casts-disallowed-in-nonarc")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### arc-repeated-use-of-weak
  string(COMPARE EQUAL "arc-repeated-use-of-weak" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "arc-repeated-use-of-weak")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### deprecated-implementations
  string(COMPARE EQUAL "deprecated-implementations" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "deprecated-implementations")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### duplicate-method-match
  string(COMPARE EQUAL "duplicate-method-match" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "duplicate-method-match")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### explicit-ownership-type
  string(COMPARE EQUAL "explicit-ownership-type" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "explicit-ownership-type")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### implicit-atomic-properties
  string(COMPARE EQUAL "implicit-atomic-properties" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "implicit-atomic-properties")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### implicit-retain-self
  string(COMPARE EQUAL "implicit-retain-self" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "implicit-retain-self")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### objc-missing-property-synthesis
  string(COMPARE EQUAL "objc-missing-property-synthesis" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "objc-missing-property-synthesis")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### objc-root-class
  string(COMPARE EQUAL "objc-root-class" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "objc-root-class")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### protocol
  string(COMPARE EQUAL "protocol" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "protocol")
    endif()
    if(is_gcc)
      list(APPEND result "protocol")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### receiver-is-weak
  string(COMPARE EQUAL "receiver-is-weak" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "receiver-is-weak")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### selector
  string(COMPARE EQUAL "selector" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "selector")
    endif()
    if(is_gcc)
      list(APPEND result "selector")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### strict-selector-match
  string(COMPARE EQUAL "strict-selector-match" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "strict-selector-match")
    endif()
    if(is_gcc)
      list(APPEND result "strict-selector-match")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  ### undeclared-selector
  string(COMPARE EQUAL "undeclared-selector" "${warning_name}" hit)
  if(hit)
    if(is_clang)
      list(APPEND result "undeclared-selector")
    endif()
    if(is_gcc)
      list(APPEND result "undeclared-selector")
    endif()
    set(${warning_flags} "${result}" PARENT_SCOPE)
    return()
  endif()

  message("Unknown warning name: ${warning_name}")
  message("List of known warnings: https://github.com/ruslo/leathers/wiki/List")
  sugar_fatal_error("")
endfunction()
