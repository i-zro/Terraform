resource "aws_iam_group" "tf_temp_group" {
  name = "tf_temp_group"

}

resource "aws_iam_group_membership" "tf_temp" {
  name = aws_iam_group.tf_temp_group.name

	users = [
    aws_iam_user.temp_naa0.name
	]

	group = aws_iam_group.tf_temp_group.name
}
