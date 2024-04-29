/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aeberius <aeberius@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/25 13:19:51 by aeberius          #+#    #+#             */
/*   Updated: 2024/04/29 14:05:19 by aeberius         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	**ft_split(char const *s, char c)
{
	char	**s_malloc;
	int	i;
	int start;
	int end;

	i = 0;
	s_malloc = ft_calloc(sizeof(char *), (ft_count_words(s, c)));
	if (s_malloc == NULL)
		return (NULL);
	while (s[i] != '\0')
	{
		while (s[i] != '\0' && s[i] == c)
			i++;
		if (s[i] != '\0')
			start = i;
		while (s[i] != '\0' && s[i] != c)
			i++;
		end = i - 1;
		
	}
}

int	ft_count_words(char const *s, char c)
{
	int	i;
	int	count_words;

	i = 0;
	count_words = 0;
	while (s[i] != '\0')
	{
		while (s[i] != '\0' && s[i] == c)
			i++;
		if (s[i] != '\0')
			count_words ++;
		while (s[i] != '\0' && s[i] != c)
			i++;
	}
	return (count_words);
}
int main ()
{
    ft_count_words("ndavindavinnnnmnnnnnndavindavin", 'n');
}
