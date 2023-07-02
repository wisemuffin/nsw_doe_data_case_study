# NSW DOE data case study report

## Welcome to Evidence!

Build polished data products with SQL and Markdown.

### Write Markdown

Evidence renders markdown files into web pages. The file for this page is:

`./reports/pages/index.md`.

### Run SQL

<!-- <Alert status=info>
Use the top right menu and select Show / Hide Queries to show or hide the SQL queries on this page.
</Alert> -->

Write queries using markdown code fences ` ``` `:

```public_school_nsw_master_dataset
select *, 1 as cnt_school from public_school_nsw_master_dataset
```

```public_school_nsw_master_dataset_count_all_schools
select count(*) as cnt_school from public_school_nsw_master_dataset
```

```public_school_nsw_master_dataset_count_all_schools_by_level_of_schooling
select Level_of_schooling, count(*) as cnt_school from public_school_nsw_master_dataset group by Level_of_schooling
```



## Include Values in Text

Return values from queries in text using the `Value` component:

Total number of public schools in NSW Department of Education **<Value data={public_school_nsw_master_dataset_count_all_schools} column=cnt_school/>**.

## Add Components

### Big Values
<BigValue data={public_school_nsw_master_dataset_count_all_schools} value=cnt_school />

### Charts

Charts can be included in a single line of code:

<BarChart
    data="{public_school_nsw_master_dataset_count_all_schools_by_level_of_schooling}"
    x="Level_of_schooling"
    y="cnt_school"
    title="School count by Level_of_schooling"
/>


### Tables

<DataTable data={public_school_nsw_master_dataset}/>



# Get Support

- See all the charts and components in the [component library](https://docs.evidence.dev/components/all-components)
- Read the [Docs](https://docs.evidence.dev/)