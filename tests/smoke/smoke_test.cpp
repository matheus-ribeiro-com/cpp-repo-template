#include "project_name/version.hpp"
#include <gtest/gtest.h>

TEST(SmokeTest, VersionIsNotEmpty)
{
    EXPECT_FALSE(project_name::version().empty());
}