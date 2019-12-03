SET COMP="PWC2019-1"

fs-filter --file=%COMP%
fs-route --file=%COMP%
fs-effort --file=%COMP%
fs-score --file=%COMP%

extract-input --file=%COMP% --give-fraction=0.0001 --give-distance=5 --haversines
task-length --file=%COMP%
cross-zone --file=%COMP%
tag-zone --file=%COMP%
peg-frame --file=%COMP%
align-time --file=%COMP%
discard-further --file=%COMP%
mask-track --file=%COMP%
land-out --file=%COMP%
gap-point --file=%COMP%

#comp-serve %COMP%
