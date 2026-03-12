# Remove containers that may conflict when running from a different folder/project.
# Run this if you see "container name already in use" errors.
$containers = docker ps -a -q --filter "name=supabase-"
if ($containers) {
    docker rm -f $containers
    Write-Host "Removed conflicting supabase containers."
} else {
    Write-Host "No supabase containers found."
}
