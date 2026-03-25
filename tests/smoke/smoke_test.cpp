#include <gtest/gtest.h>
#include "project_name/version.hpp"

TEST(SmokeTest, VersionIsNotEmpty)
{
    EXPECT_FALSE(project_name::version().empty());
}