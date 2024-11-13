# Airbyte

[Airbyte] is a data movement platform. Similar to:
- [Fivetran](https://www.fivetran.com/)
- [Stitch](https://www.stitchdata.com/)
- [Matillion](https://www.matillion.com/)
- [AppFlow](https://aws.amazon.com/appflow/)
- [Data Fusion](https://cloud.google.com/data-fusion?hl=en)

## Requirements
Please create a docker network:
```
cd ../networks
make network/data-infra/create
```

## How to Run
The command below will start a Docker Compsoe stack to instantiate all the Airbyte components locally. Please check the [Architecture Overview](https://docs.airbyte.com/understanding-airbyte/high-level-view) for detailed information about Airbyte's components.

```
make airbyte/start
```

## References
- [The Complete Hands-on Introduction to Airbyte](https://www.udemy.com/course/the-complete-hands-on-introduction-to-airbyte/)