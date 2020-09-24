#!/bin/bash

cd "$(dirname "$0")"

mkdir -p src
mkdir -p src/step0
mkdir -p src/step1
mkdir -p src/step2
mkdir -p src/step3
mkdir -p src/step4
mkdir -p src/step5
mkdir -p src/step6
mkdir -p src/step7
mkdir -p src/step8

base_url="https://raw.githubusercontent.com/rachel-church/summer-of-qraphql"

curl $base_url/master/src/App.jsx -o src/step0/App.jsx

curl $base_url/step1/addTypescript/src/App.tsx -o src/step1/App.tsx

curl $base_url/step2/addCodegen/src/App.tsx -o src/step2/App.tsx
curl $base_url/step2/addCodegen/codegen.yml -o src/step2/codegen.yml
curl $base_url/step2/addCodegen/src/schema.ts -o src/step2/schema.ts
curl $base_url/step2/addCodegen/src/index.tsx -o src/step2/index.tsx

curl $base_url/step3/addApollo/src/App.tsx -o src/step3/App.tsx
curl $base_url/step3/addApollo/src/schema.ts -o src/step3/schema.ts
curl $base_url/step3/addApollo/src/index.tsx -o src/step3/index.tsx

curl $base_url/step4/addVariable/src/App.tsx -o src/step4/App.tsx

curl $base_url/step5/addOperationsPlugin/src/App.tsx -o src/step5/App.tsx
curl $base_url/step5/addOperationsPlugin/codegen.yml -o src/step5/codegen.yml

curl $base_url/step6/addApolloPlugin/src/App.tsx -o src/step6/App.tsx
curl $base_url/step6/addApolloPlugin/codegen.yml -o src/step6/codegen.yml

curl $base_url/step7/useGraphqlFile/codegen.yml -o src/step7/codegen.yml
curl $base_url/step7/useGraphqlFile/src/App.tsx -o src/step7/App.tsx
curl $base_url/step7/useGraphqlFile/src/getToysUnderPrice.graphql -o src/step7/getToysUnderPrice.graphql

curl $base_url/step8/IDEGraphqlSupport/codegen.yml -o src/step8/codegen.yml
