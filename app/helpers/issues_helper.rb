module IssuesHelper
  def resolve_action_text(issue)
    issue.resolved ? "Reopen" : "Resolve"
  end
end