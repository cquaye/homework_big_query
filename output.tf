output "dataset" {
  value = google_bigquery_dataset.big_q.dataset_id
}

output "table" {
  value = google_bigquery_table.sheetz.table_id
}