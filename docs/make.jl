using Tangent
using Documenter

DocMeta.setdocmeta!(Tangent, :DocTestSetup, :(using Tangent); recursive=true)

makedocs(;
    modules=[Tangent],
    authors="Pablo Rodríguez Sánchez <pablo.rodriguez.sanchez@gmail.com> and contributors",
    sitename="Tangent.jl",
    format=Documenter.HTML(;
        canonical="https://PabRod.github.io/Tangent.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/PabRod/Tangent.jl",
    devbranch="main",
)
