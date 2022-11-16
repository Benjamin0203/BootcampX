SELECT SUM(completed_at - started_at) / (
  SELECT count(assistance_requests.*) FROM assistance_requests
) AS average_assistance_request_duration FROM assistance_requests;

-- or SELECT avg(completed_at - started_at) as average_assistance_request_duration FROM assistance_requests;

