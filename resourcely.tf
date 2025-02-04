// This resource stores answers for Resourcely's global context questions. It is safe to edit this block by hand. Edits
// are generally safe, except for renaming or removing the block. See documentation for more details.
// https://docs.resourcely.io/concepts/other-features-and-settings/global-context-and-values#resource-level-answers
resource "terraform_data" "resourcely_context_answers" {
  input = {
    "version" : 1,
    "data" : [
      {
        "$applies_to" : [
          "resource.aws_instance.test_u2VrZYmt2eUxaZnL",
          "resource.aws_key_pair.test_u2VrZYmt2eUxaZnL",
          "resource.aws_security_group.test_u2VrZYmt2eUxaZnL_0",
          "data.aws_ami.test_u2VrZYmt2eUxaZnL"
        ],
        "business_reason" : "Some service"
      }
    ]
  }
}