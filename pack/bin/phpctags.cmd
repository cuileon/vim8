@rem Do not use "echo off" to not affect any child calls.
@setlocal
@if not exist "%PORTABLE_APPS%" @set PORTABLE_APPS=%HOME%\Apps

@php %HOME%\vimfiles\pack\plugin\start\phpctags\bin\phpctags %*
