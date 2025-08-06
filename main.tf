resource "google_bigquery_dataset" "big_q" {
  dataset_id                     = "bar_q_01"
  location                       ="us-central1" 
  description                    ="Just testing the big query " 
  

  labels = {
    env  = "test"
  }

}


resource "google_bigquery_table" "sheetz" {
  table_id                     = "foo_01"
  dataset_id                   = google_bigquery_dataset.big_q.dataset_id
  deletion_protection = false

}