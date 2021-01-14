all: build convert

build:
	docker build -t dxf-pipeline .

convert:
	docker run --rm -v `pwd`:/app dxf-pipeline /app/convert.sh remarkable_math_graph.dxf
