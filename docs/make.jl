using MeasureFamilies
using Documenter

DocMeta.setdocmeta!(MeasureFamilies, :DocTestSetup, :(using MeasureFamilies); recursive=true)

makedocs(;
    modules=[MeasureFamilies],
    authors="Chad Scherrer <chad.scherrer@gmail.com> and contributors",
    repo="https://github.com/cscherrer/MeasureFamilies.jl/blob/{commit}{path}#{line}",
    sitename="MeasureFamilies.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://cscherrer.github.io/MeasureFamilies.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/cscherrer/MeasureFamilies.jl",
    devbranch="main",
)
