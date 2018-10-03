
def generated_main_dep_rules():
  native.http_file(
      name = "com_googlecode_mp4parser__isoparser",
      url = "https://artifactory.spotify.net/artifactory/android-repo/com/googlecode/mp4parser/isoparser/1.1.21/isoparser-1.1.21.jar",
  )

def generate_main_transitive_dependency_rules():
  native.java_import(
      name = "com_googlecode_mp4parser__isoparser__1_1_21",
      visibility = ["//visibility:public"],
      jars = ["@com_googlecode_mp4parser__isoparser//file"],
  )
  native.alias(
      name = "com_googlecode_mp4parser__isoparser",
      actual = "com_googlecode_mp4parser__isoparser__1_1_21",
      visibility = ["//visibility:public"],
  )
