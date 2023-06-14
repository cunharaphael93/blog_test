require "test_helper"

class BlogPestTest < ActiveSupport::TestCase
  
# draft method tests

test "draft? returns true for draft blogposts?" do
  assert blog_pests(:draft).draft?
end
test "draft? returns true for published blogposts?" do
  refute blog_pests(:published).draft?
end
test "draft? returns true for scheduled blogposts?" do
refute blog_pests(:scheduled).draft?
end

# published method tests

test "published? returns true for published blogposts?" do
  assert blog_pests(:published).published?
end
test "published? returns true for draft blogposts" do
  refute blog_pests(:draft).published?
end
test "published? returns true for scheduled blogposts" do
  refute blog_pests(:scheduled).published?
end

# scheduled method tests

test "scheduled? returns true for scheduled blogposts" do
  assert blog_pests(:scheduled).scheduled?
end
test "scheduled? returns true for draft blogposts" do
  refute blog_pests(:draft).scheduled?
end
test "scheduled? returns true for published blogposts" do
  refute blog_pests(:published).scheduled?
end

end
