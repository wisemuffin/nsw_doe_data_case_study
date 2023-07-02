# NSW DOE data case study report

## Welcome to Evidence!

Build polished data products with SQL and Markdown.

[Share feedback with the Evidence team](https://du3tapwtcbi.typeform.com/to/GZNZe1GY)

### Write Markdown

Evidence renders markdown files into web pages. The file for this page is:

`./reports/pages/index.md`.

👉 Open this file, change some text and save it to see this page update instantly.

### Run SQL

<!-- <Alert status=info>
Use the top right menu and select Show / Hide Queries to show or hide the SQL queries on this page.
</Alert> -->

Write queries using markdown code fences ` ``` `:

```public_school_nsw_master_dataset
select AECG_region, count(*) as cnt_school from public_school_nsw_master_dataset group by AECG_region
```

<BarChart
    data="{public_school_nsw_master_dataset}"
    x="AECG_region"
    y="cnt_school"
    title="School count by AECG_region"
/>